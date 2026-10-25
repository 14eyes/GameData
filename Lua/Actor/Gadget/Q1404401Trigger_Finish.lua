require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404401Trigger_Finish = class("Q1404401Trigger_Finish", GadgetActorProxy)
Q1404401Trigger_Finish.defaultAlias = "Q1404401Trigger_Finish"
local Q14044ClientConfig = require("Quest/Client/Q14044ClientConfig")

local this
local subIDs = Q14044ClientConfig.SubIDs
local datas = Q14044ClientConfig.Datas
local npcs = Q14044ClientConfig.Npcs
local points = Q14044ClientConfig.Points

function Q1404401Trigger_Finish:OnPostDataPrepare()
    print("Q1404401Trigger_Finish - OnPostDataPrepare")
    this = self
end

function Q1404401Trigger_Finish:OnPostComponentPrepare()
    print("Q1404401Trigger_Finish - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14044)
end

function Q1404401Trigger_Finish:TriggerIn()
    print("Q1404401Trigger_Finish - TriggerIn")
    actorUtils.FinishQuestID(false, 1404401)
    this:DestroySelf()
end

function Q1404401Trigger_Finish:PreTriggerIn()
    print("Q1404401Trigger_Finish - PreTriggerIn")
end

function Q1404401Trigger_Finish:LightUpTriggerIn()
    print("Q1404401Trigger_Finish - LightUpTriggerIn")
end

function Q1404401Trigger_Finish:TriggerOut()
    print("Q1404401Trigger_Finish - TriggerOut")
end

return Q1404401Trigger_Finish
