require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger8 = class("Q8012Trigger8", GadgetActorProxy)
Q8012Trigger8.defaultAlias = "Q8012Trigger8"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger8:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger8:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger8:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("8012")
    if actor:GetSubQuestState(801215) == 2 then
        actorUtils.FinishQuestID(false, 801215)
    else
        if actor:GetSubQuestState(801216) == 2 then
            actorUtils.FinishQuestID(false, 801216)
        else
            if actor:GetSubQuestState(801217) == 2 then
                actorUtils.FinishQuestID(false, 801217)
            else
                if actor:GetSubQuestState(801218) == 2 then
                    actorUtils.FinishQuestID(false, 801218)
                else
                    if actor:GetSubQuestState(801219) == 2 then
                        actorUtils.FinishQuestID(false, 801219)
                    else
                        if actor:GetSubQuestState(801220) == 2 then
                            actorUtils.FinishQuestID(false, 801220)
                        end
                    end
                end
            end
        end
    end

    this:DestroySelf()
end

function Q8012Trigger8:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger8:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger8:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger8
