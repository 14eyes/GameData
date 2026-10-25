require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501712Trigger = class("Q501712Trigger", GadgetActorProxy)
Q501712Trigger.defaultAlias = "Q501712Trigger"
local Q5017ClientConfig = require("Quest/Client/Q5017ClientConfig")

local this
local subIDs = Q5017ClientConfig.SubIDs
local datas = Q5017ClientConfig.Datas
local npcs = Q5017ClientConfig.Npcs
local points = Q5017ClientConfig.Points

function Q501712Trigger:OnPostDataPrepare()
    print("Q501712Trigger - OnPostDataPrepare")
    this = self
end

function Q501712Trigger:OnPostComponentPrepare()
    print("Q501712Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5017)
end

function Q501712Trigger:TriggerIn()
    print("Q501712Trigger - TriggerIn")
    actorMgr:GetActor("5017"):TransmitPlayerByQuestId(501711, 13, nil, nil, nil)
    this:DestroySelf()
end

function Q501712Trigger:PreTriggerIn()
    print("Q501712Trigger - PreTriggerIn")
end

function Q501712Trigger:LightUpTriggerIn()
    print("Q501712Trigger - LightUpTriggerIn")
end

function Q501712Trigger:TriggerOut()
    print("Q501712Trigger - TriggerOut")
end

return Q501712Trigger
