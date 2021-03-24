if( NOT TARGET Cinder-spdlog )

	get_filename_component( CINDER_SPDLOG_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )

	list( APPEND Cinder-spdlog_INCLUDES
		${CINDER_SPDLOG_PATH}/include
	)

	if( CINDER_MAC )
		list( APPEND Cinder-spdlog_INCLUDES
			${CINDER_SPDLOG_PATH}/include/
		)
		set( CINDER_MAC_SPDLOG_LIB_PATH
			${CINDER_SPDLOG_PATH}/lib/macos/
		)
		list( APPEND Cinder-spdlog_LIBRARIES
			${CINDER_MAC_SPDLOG_LIB_PATH}/libspdlog.a
		)
	endif()
endif()
