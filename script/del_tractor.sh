python launch.py \
    --config configs/del-ctn.yaml \
    --train \
    --gpu 0 \
    data.source=/home/yishi/GaussianEditor/dataset/200_cameras_test \
    system.gs_source=/home/yishi/GaussianEditor/dataset/200_cameras_test/point_cloud/iteration_7000/point_cloud.ply \
    system.seg_prompt="sink" \
    system.inpaint_prompt="floor and wall" \
    system.cache_overwrite=False \
    trainer.max_steps=2000 \
    system.fix_holes=True \
    system.inpaint_scale=1 \
    system.mask_dilate=15 \
    system.max_densify_percent=0.01 \
    system.densify_from_iter=0 \
    system.densify_until_iter=5000 \
    system.densification_interval=50 \
    system.anchor_weight_init_g0=0 \
    system.anchor_weight_init=0.0 \
    system.anchor_weight_multiplier=1.5 \
    system.loss.lambda_anchor_color=5 \
    system.loss.lambda_anchor_geo=50 \
    system.loss.lambda_anchor_scale=50 \
    system.loss.lambda_anchor_opacity=50 \
    system.loggers.wandb.enable=true \
    system.loggers.wandb.name="del_tracker"
