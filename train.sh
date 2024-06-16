accelerate launch --num_processes 2 train.py --pretrained_model_name_or_path "yisol/IDM-VTON" \
    --width 768 --height 1024 --learning_rate 0.03 --epcohs 4 --num_train_steps 30 \
    --output_dir "result" --data_dir "zalando-hd-resized" \
    --seed 42 --test_batch_size 2 --guidance_scale 2.0


##unpaired setting
accelerate launch --num_processes 2 train.py --pretrained_model_name_or_path "yisol/IDM-VTON" \
    --width 768 --height 1024 --num_train_steps 30 \
    --output_dir "result" --unpaired --data_dir "zalando-hd-resized" \
    --seed 42 --test_batch_size 2 --guidance_scale 2.0
