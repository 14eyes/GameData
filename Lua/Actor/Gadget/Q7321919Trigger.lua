require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321919Trigger = class("Q7321919Trigger", GadgetActorProxy)
Q7321919Trigger.defaultAlias = "Q7321919Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321919Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321919Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 15, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7321919Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):EnterSceneLookCamera({x = -1707.49, y = 21.0, z = 5676.035}, 1, 3, false, false)
    actorUtils.FinishQuestID(false, 7321919)
    this:DestroySelf()
end

function Q7321919Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321919Trigger
