/*
 * Copyright 2011 Red Hat, Inc. and/or its affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.optaplanner.core.api.score.buildin.hardsoftlong;

import org.kie.api.runtime.rule.RuleContext;
import org.optaplanner.core.api.score.Score;
import org.optaplanner.core.api.score.holder.AbstractScoreHolder;

/**
 * @see HardSoftLongScore
 */
public class HardSoftLongScoreHolder extends AbstractScoreHolder {

    protected long hardScore;
    protected long softScore;

    public HardSoftLongScoreHolder(boolean constraintMatchEnabled) {
        super(constraintMatchEnabled);
    }

    public long getHardScore() {
        return hardScore;
    }

    public long getSoftScore() {
        return softScore;
    }

    // ************************************************************************
    // Worker methods
    // ************************************************************************

    /**
     * @param kcontext never null, the magic variable in DRL
     * @param weight higher is better, negative for a penalty, positive for a reward
     */
    public void addHardConstraintMatch(RuleContext kcontext, final long weight) {
        hardScore += weight;
        registerLongConstraintMatch(kcontext, 0, weight, new LongConstraintUndoListener() {
            @Override
            public void undo() {
                hardScore -= weight;
            }
        });
    }

    /**
     * @param kcontext never null, the magic variable in DRL
     * @param weight higher is better, negative for a penalty, positive for a reward
     */
    public void addSoftConstraintMatch(RuleContext kcontext, final long weight) {
        softScore += weight;
        registerLongConstraintMatch(kcontext, 1, weight, new LongConstraintUndoListener() {
            @Override
            public void undo() {
                softScore -= weight;
            }
        });
    }

    @Override
    public Score extractScore(int initScore) {
        return HardSoftLongScore.valueOf(initScore, hardScore, softScore);
    }

}
