require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614726Trigger = class("Q7614726Trigger", GadgetActorProxy)
Q7614726Trigger.defaultAlias = "Q7614726Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614726Trigger:OnPostDataPrepare()
    print("Q7614726Trigger - OnPostDataPrepare")
    this = self
end

function Q7614726Trigger:OnPostComponentPrepare()
    print("Q7614726Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 30, 25, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614726Trigger:TriggerIn()
    print("Q7614726Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614726)
    this:DestroySelf()
end

function Q7614726Trigger:PreTriggerIn()
    print("Q7614726Trigger - PreTriggerIn")
end

function Q7614726Trigger:LightUpTriggerIn()
    print("Q7614726Trigger - LightUpTriggerIn")
end

function Q7614726Trigger:TriggerOut()
    print("Q7614726Trigger - TriggerOut")
end

return Q7614726Trigger
