# Global Land-Ocean Temperature Index Analysis

This repository contains an R script designed for analyzing 142 years of data from the Global Land-Ocean Temperature Index. The script reads temperature data and performs various analyses to visualize trends, anomalies, rankings, and distributions.

## Project Overview

The main objectives of this analysis are:
- To plot the data as a time series and overlay a moving average to identify trends over time.
- To calculate and visualize temperature anomalies as deviations from the mean.
- To rank temperatures and visualize their distribution over the years.
- To display the frequency distribution of temperature values as a histogram with an overlaid density plot.

### Data Description

The dataset, `data.txt`, includes 142 years of temperature data, structured with two main columns:
- **Years**: The year of the observation.
- **Temperature**: The recorded temperature.

## Getting Started

### Prerequisites

To run this script, you need R installed on your system. Optionally, RStudio can be used as an IDE to make running and editing the script easier.

### Running the Script

1. Ensure you have the `data.txt` file placed in a known directory.
2. Modify the script to point to the correct file path for `data.txt`.
3. Run the script using R or RStudio. The script will automatically generate and display four graphs in a 2x2 screen layout.

## Analysis and Visualizations

1. **Data-Time Series and Moving Average Graph**: Shows the temperature trend over years with a moving average to smooth out short-term fluctuations.
2. **Anomaly Graph**: Visualizes temperature anomalies as deviations from the overall mean, with reference lines for standard deviations.
3. **Ranking Graph**: Ranks temperatures from highest to lowest, showing how temperature distributions have shifted over the years.
4. **Histogram-Scatter Graph**: A histogram of temperature values with an overlaid density plot, highlighting the distribution of temperatures.

## Contributing

Contributions to this project are welcome. Please feel free to fork the repository, make changes, and submit a pull request for review.

## License

This project is open source and available under the [MIT License](LICENSE.md).
