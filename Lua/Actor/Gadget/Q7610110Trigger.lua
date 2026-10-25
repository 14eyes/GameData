require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610110Trigger = class("Q7610110Trigger", GadgetActorProxy)
Q7610110Trigger.defaultAlias = "Q7610110Trigger"
local Q76101ClientConfig = require("Quest/Client/Q76101ClientConfig")

local this
local subIDs = Q76101ClientConfig.SubIDs
local datas = Q76101ClientConfig.Datas
local npcs = Q76101ClientConfig.Npcs
local points = Q76101ClientConfig.Points

function Q7610110Trigger:OnPostDataPrepare()
    print("Q7610110Trigger - OnPostDataPrepare")
    this = self
end

function Q7610110Trigger:OnPostComponentPrepare()
    print("Q7610110Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(5, 5, 4, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76101)
end

function Q7610110Trigger:TriggerIn()
    print("Q7610110Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7610110)
    this:DestroySelf()
end

function Q7610110Trigger:PreTriggerIn()
    print("Q7610110Trigger - PreTriggerIn")
end

function Q7610110Trigger:LightUpTriggerIn()
    print("Q7610110Trigger - LightUpTriggerIn")
end

function Q7610110Trigger:TriggerOut()
    print("Q7610110Trigger - TriggerOut")
end

return Q7610110Trigger
