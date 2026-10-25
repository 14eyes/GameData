require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502409_Trigger = class("Q1502409_Trigger", GadgetActorProxy)
Q1502409_Trigger.defaultAlias = "Q1502409_Trigger"
local Q15024ClientConfig = require("Quest/Client/Q15024ClientConfig")

local this
local subIDs = Q15024ClientConfig.SubIDs
local datas = Q15024ClientConfig.Datas
local npcs = Q15024ClientConfig.Npcs
local points = Q15024ClientConfig.Points

function Q1502409_Trigger:OnPostDataPrepare()
    print("Q1502409_Trigger - OnPostDataPrepare")
    this = self
end

function Q1502409_Trigger:OnPostComponentPrepare()
    print("Q1502409_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15024)
end

function Q1502409_Trigger:TriggerIn()
    print("Q1502409_Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502409)
    this:DestroySelf()
end

function Q1502409_Trigger:PreTriggerIn()
    print("Q1502409_Trigger - PreTriggerIn")
end

function Q1502409_Trigger:LightUpTriggerIn()
    print("Q1502409_Trigger - LightUpTriggerIn")
end

function Q1502409_Trigger:TriggerOut()
    print("Q1502409_Trigger - TriggerOut")
end

return Q1502409_Trigger
