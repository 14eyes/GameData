require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620206Trigger = class("Q7620206Trigger", GadgetActorProxy)
Q7620206Trigger.defaultAlias = "Q7620206Trigger"
local Q76202ClientConfig = require("Quest/Client/Q76202ClientConfig")

local this
local subIDs = Q76202ClientConfig.SubIDs
local datas = Q76202ClientConfig.Datas
local npcs = Q76202ClientConfig.Npcs
local points = Q76202ClientConfig.Points

function Q7620206Trigger:OnPostDataPrepare()
    print("Q7620206Trigger - OnPostDataPrepare")
    this = self
end

function Q7620206Trigger:OnPostComponentPrepare()
    print("Q7620206Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76202)
end

function Q7620206Trigger:TriggerIn()
    print("Q7620206Trigger - TriggerIn")
    actorMgr:GetActor("76202"):TransmitPlayerWithDialogTextByQuestId(7620205, 1, datas.DialogIdsData_black, 2, nil, nil, nil)
    this:DestroySelf()
end

function Q7620206Trigger:PreTriggerIn()
    print("Q7620206Trigger - PreTriggerIn")
end

function Q7620206Trigger:LightUpTriggerIn()
    print("Q7620206Trigger - LightUpTriggerIn")
end

function Q7620206Trigger:TriggerOut()
    print("Q7620206Trigger - TriggerOut")
end

return Q7620206Trigger
