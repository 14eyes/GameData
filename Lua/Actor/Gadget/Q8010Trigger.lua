require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8010Trigger = class("Q8010Trigger", GadgetActorProxy)
Q8010Trigger.defaultAlias = "Q8010Trigger"
local Q8010ClientConfig = require("Quest/Client/Q8010ClientConfig")

local this
local subIDs = Q8010ClientConfig.SubIDs
local npcs = Q8010ClientConfig.Npcs
local points = Q8010ClientConfig.Points

function Q8010Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8010Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8010Trigger:TriggerIn()
    print("TriggerIn")
    if quest:GetSubQuestState(801018) == 2 then
        actorUtils.FinishQuestID(false, 801018)
    else
        if quest:GetSubQuestState(801019) == 2 then
            actorUtils.FinishQuestID(false, 801019)
        else
            if quest:GetSubQuestState(801020) == 2 then
                actorUtils.FinishQuestID(false, 801020)
            else
                if quest:GetSubQuestState(801021) == 2 then
                    actorUtils.FinishQuestID(false, 801021)
                else
                    if quest:GetSubQuestState(801022) == 2 then
                        actorUtils.FinishQuestID(false, 801022)
                    else
                        if quest:GetSubQuestState(801023) == 2 then
                            actorUtils.FinishQuestID(false, 801023)
                        else
                            if quest:GetSubQuestState(801024) == 2 then
                                actorUtils.FinishQuestID(false, 801024)
                            else
                                if quest:GetSubQuestState(801025) == 2 then
                                    actorUtils.FinishQuestID(false, 801025)
                                else
                                    if quest:GetSubQuestState(801026) == 2 then
                                        actorUtils.FinishQuestID(false, 801026)
                                    else
                                        if quest:GetSubQuestState(801027) == 2 then
                                            actorUtils.FinishQuestID(false, 801027)
                                        else
                                            if quest:GetSubQuestState(801028) == 2 then
                                                actorUtils.FinishQuestID(false, 801028)
                                            else
                                                if quest:GetSubQuestState(801029) == 2 then
                                                    actorUtils.FinishQuestID(false, 801029)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    this:DestroySelf()
end

function Q8010Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8010Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8010Trigger:TriggerOut()
    print("TriggerOut")
end

return Q8010Trigger
