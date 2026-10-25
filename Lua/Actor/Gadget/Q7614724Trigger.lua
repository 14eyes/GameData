require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614724Trigger = class("Q7614724Trigger", GadgetActorProxy)
Q7614724Trigger.defaultAlias = "Q7614724Trigger"
local Q76147ClientConfig = require("Quest/Client/Q76147ClientConfig")

local this
local subIDs = Q76147ClientConfig.SubIDs
local datas = Q76147ClientConfig.Datas
local npcs = Q76147ClientConfig.Npcs
local points = Q76147ClientConfig.Points

function Q7614724Trigger:OnPostDataPrepare()
    print("Q7614724Trigger - OnPostDataPrepare")
    this = self
end

function Q7614724Trigger:OnPostComponentPrepare()
    print("Q7614724Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(45.573414, 42.203247, 12.982888, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76147)
end

function Q7614724Trigger:TriggerIn()
    print("Q7614724Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7614724)
    this:DestroySelf()
end

function Q7614724Trigger:PreTriggerIn()
    print("Q7614724Trigger - PreTriggerIn")
end

function Q7614724Trigger:LightUpTriggerIn()
    print("Q7614724Trigger - LightUpTriggerIn")
end

function Q7614724Trigger:TriggerOut()
    print("Q7614724Trigger - TriggerOut")
end

return Q7614724Trigger
