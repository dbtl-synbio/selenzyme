To start selenzymeRF run the bash file start_server.sh (requires user input)

(Optional)
1. Generate a new folder called selenzyme2, that will be used to run the programme.
2. The data zip files from compressed_data will be unzipped into selenzyme2/selenzyPro/data
3. Generate additional folders in selenzyme2

(Optional)
4. Starts nginx (if required)

5. Delete old Docker images and containers
6. Build Docker images
7. Start Docker container

(Optional)
8. If Error 13 appears (lack of access permissions to the selenzy.log file) try this command:
sudo chown "user" -R /home/"user"/"user_folder"/selenzyme-SelenzymeRF/selenzyme2/selenzyPro/log/selenzy.log


