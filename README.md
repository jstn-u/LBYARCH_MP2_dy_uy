I. Execution Time and Short Analysis of the Performance
    a. Execution Times
        The following execution times are the average of thirty (30) runs of the same inputs for different widths and heights.
            1. 10 x 10 (input: 1)        ->   2 ms
              ![image](https://github.com/user-attachments/assets/fe1d0a9a-1905-4d88-8c6c-579a2dcb2671)
            2. 20 x 20 (input: 1)        ->   9 ms
              ![image](https://github.com/user-attachments/assets/74fa071e-7bb1-44e4-9d54-677188f6f332)
            3. 40 x 40 (input: 1)        ->   39 ms
              ![image](https://github.com/user-attachments/assets/69da7005-d601-433c-bb38-fcae1b0082f3)
            4. 100 x 100 (input: 0.1)    ->   284 ms
              ![image](https://github.com/user-attachments/assets/3b2953b3-9a03-48e4-9031-da4fc8a59d64)
            5. 1000 x 1000               ->   Computer Terminal stopped responding.
            6. 300 x 300 (input: 0.1)    ->   Computer Terminal stopped responding.
            7. 200 x 200 (input: 0.1)    ->   1455 ms
              ![image](https://github.com/user-attachments/assets/a1b11ffa-b134-44ef-ac28-8a4a47ddf5a6)
    b. Short Analysis
        Based on the data on the execution times, by graphing the increase of times as the height and width increases, we can observe a non-linear or an exponential slope. With that, we can conclude that the matrix's time increases exponentially. 
        ![00d7f5c7-477a-4201-bb11-50c094cd9cc7](https://github.com/user-attachments/assets/57008345-ce08-4d68-b2d6-5dbf8f64d3e2)

      
II. The screenshot(s) of the program output(s) with the correctness check
        Calculation: (f/i) = (1/255) or floating point x 255
    A.) 3 x 4
    0.25 -> 64, 0.35 -> 89, 0.45 -> 114, 0.33 -> 84
    0.55 -> 140, 0.65 -> 166, 0.75 -> 191, 0.33 -> 84
    0.85 -> 216, 0.95 -> 242, 0.15 -> 38, 0.33 -> 84
    Here is the input & output image: ![Screenshot 2024-12-01 022908](https://github.com/user-attachments/assets/0069e4d0-bcf7-4d10-af16-334b6482b5cc)
    B.) 100 x 100
    0.1 -> 26 (10000 times)
    Input: ![Screenshot 2024-12-01 023445](https://github.com/user-attachments/assets/3df41887-b657-4a84-bf5b-9d25da6abcab)
    Output: ![Screenshot 2024-12-01 023512](https://github.com/user-attachments/assets/1d7d825d-76be-4511-8993-69f35fd05dbe)
    C.) 10 x 10
    0.1 -> 26 (100 times)
    Input: ![Screenshot 2024-12-01 023727](https://github.com/user-attachments/assets/947a5fa9-a80c-45cf-9a7b-63f2ba977980)
    Output: ![Screenshot 2024-12-01 023752](https://github.com/user-attachments/assets/1242cf13-a2c9-45b8-bc96-ff3e9b5e8069)
    D.) 5 x 5
    0.1 -> 26, 0.2 -> 51, 0.3 -> 76, 0.4 -> 102, 0.5 -> 128
    0.6 -> 153, 0.7 -> 178, 0.8 -> 204, 0.9 -> 230, 0.10 -> 26
    0.11 -> 28, 0.12 -> 31, 0.13 -> 33, 0.14 -> 36, 0.15 -> 38
    0.16 -> 41, 0.17 -> 43, 0.18 -> 46, 0.19 -> 48, 0.20 -> 51
    0.21 -> 54, 0.22 -> 56, 0.23 -> 59, 0.24 -> 61, 0.25 -> 64
    Input & Output: ![Screenshot 2024-12-01 024105](https://github.com/user-attachments/assets/44c0249c-3c60-4628-82ec-5b9d17bf7e64)
