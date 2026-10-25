require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016329Trigger = class("Q4016329Trigger", GadgetActorProxy)
Q4016329Trigger.defaultAlias = "Q4016329Trigger"
local Q40163ClientConfig = require("Quest/Client/Q40163ClientConfig")

local this
local subIDs = Q40163ClientConfig.SubIDs
local datas = Q40163ClientConfig.Datas
local npcs = Q40163ClientConfig.Npcs
local points = Q40163ClientConfig.Points

function Q4016329Trigger:OnPostDataPrepare()
    print("Q4016329Trigger - OnPostDataPrepare")
    this = self
end

function Q4016329Trigger:OnPostComponentPrepare()
    print("Q4016329Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(50, 50, 30, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40163)
end

function Q4016329Trigger:TriggerIn()
    print("Q4016329Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016329)
    this:DestroySelf()
end

function Q4016329Trigger:PreTriggerIn()
    print("Q4016329Trigger - PreTriggerIn")
end

function Q4016329Trigger:LightUpTriggerIn()
    print("Q4016329Trigger - LightUpTriggerIn")
end

function Q4016329Trigger:TriggerOut()
    print("Q4016329Trigger - TriggerOut")
end

return Q4016329Trigger
