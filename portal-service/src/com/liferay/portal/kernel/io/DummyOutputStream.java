/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.portal.kernel.io;

import java.io.OutputStream;

/**
 * @author Brian Wing Shun Chan
 */
public class DummyOutputStream extends OutputStream {

	@Override
	public void close() {
	}

	@Override
	public void flush() {
	}

	@Override
	public void write(byte[] bytes) {
	}

	@Override
	public void write(byte[] bytes, int offset, int length) {
	}

	@Override
	public void write(int b) {
	}

}