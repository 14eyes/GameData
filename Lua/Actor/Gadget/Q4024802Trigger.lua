require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024802Trigger = class("Q4024802Trigger", GadgetActorProxy)
Q4024802Trigger.defaultAlias = "Q4024802Trigger"
local Q40248ClientConfig = require("Quest/Client/Q40248ClientConfig")

local this
local subIDs = Q40248ClientConfig.SubIDs
local datas = Q40248ClientConfig.Datas
local npcs = Q40248ClientConfig.Npcs
local points = Q40248ClientConfig.Points

function Q4024802Trigger:OnPostDataPrepare()
    print("Q4024802Trigger - OnPostDataPrepare")
    this = self
end

function Q4024802Trigger:OnPostComponentPrepare()
    print("Q4024802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40248)
end

function Q4024802Trigger:TriggerIn()
    print("Q4024802Trigger - TriggerIn")
    actorMgr:GetActor("40248"):RequestInteraction(npcs.Xiangling.alias, "", true)
    this:DestroySelf()
end

function Q4024802Trigger:PreTriggerIn()
    print("Q4024802Trigger - PreTriggerIn")
end

function Q4024802Trigger:LightUpTriggerIn()
    print("Q4024802Trigger - LightUpTriggerIn")
end

function Q4024802Trigger:TriggerOut()
    print("Q4024802Trigger - TriggerOut")
end

return Q4024802Trigger
