$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_COPY_FILES += \
    device/xiaomi/gemini/kernel:kernel 
PRODUCT_DEVICE := gemini
PRODUCT_NAME := omni_gemini
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 5
PRODUCT_MANUFACTURER := Xiaomi
