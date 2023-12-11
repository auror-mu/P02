class MeasuresController < ApplicationController
  require 'csv'

  def index
    csv_files = ['public/csv_files/20211101_B3D54FD00007B2.csv', 'public/csv_files/20211101_B3D54FD000088A.csv', 'public/csv_files/20211101_B3D54FD000088F.csv']

    all_rooms_data = []

    csv_files.each do |csv_file_path|
      rooms_data = []

      CSV.foreach(csv_file_path, headers: true) do |row|
        room_data = {
          room_id: row['room_id'],
          measure_type: row['measure_type'],
          measure_float: row['measure_float'].to_f
        }
        rooms_data << room_data
      end

      all_rooms_data += rooms_data
    end

    grouped_data = all_rooms_data.group_by { |data| data[:room_id] }

    @labels = grouped_data.keys
    @datasets = []

    grouped_data.each do |room_id, data|
      measure_floats = data.map { |d| d[:measure_float] }

      @datasets << {
        label: room_id,
        data: measure_floats,
        backgroundColor: 'rgba(75, 192, 192, 0.2)',
        borderColor: 'rgba(75, 192, 192, 1)',
        borderWidth: 1
      }
    end
  end
end
