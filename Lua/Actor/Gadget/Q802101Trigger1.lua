require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q802101Trigger1 = class("Q802101Trigger1", GadgetActorProxy)
Q802101Trigger1.defaultAlias = "Q802101Trigger1"
local Q8021ClientConfig = require("Quest/Client/Q8021ClientConfig")

local this
local subIDs = Q8021ClientConfig.SubIDs
local datas = Q8021ClientConfig.Datas
local npcs = Q8021ClientConfig.Npcs
local points = Q8021ClientConfig.Points

function Q802101Trigger1:OnPostDataPrepare()
    print("Q802101Trigger1 - OnPostDataPrepare")
    this = self
end

function Q802101Trigger1:OnPostComponentPrepare()
    print("Q802101Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8021)
end

function Q802101Trigger1:TriggerIn()
    print("Q802101Trigger1 - TriggerIn")
    actorUtils.FinishQuestID(false, 802101)
    this:DestroySelf()
end

function Q802101Trigger1:PreTriggerIn()
    print("Q802101Trigger1 - PreTriggerIn")
end

function Q802101Trigger1:LightUpTriggerIn()
    print("Q802101Trigger1 - LightUpTriggerIn")
end

function Q802101Trigger1:TriggerOut()
    print("Q802101Trigger1 - TriggerOut")
end

return Q802101Trigger1
