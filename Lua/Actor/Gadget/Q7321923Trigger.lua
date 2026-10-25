require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7321923Trigger = class("Q7321923Trigger", GadgetActorProxy)
Q7321923Trigger.defaultAlias = "Q7321923Trigger"
local Q73219ClientConfig = require("Quest/Client/Q73219ClientConfig")

local this
local subIDs = Q73219ClientConfig.SubIDs
local npcs = Q73219ClientConfig.Npcs
local datas = Q73219ClientConfig.Datas

function Q7321923Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7321923Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCommonPolygonTrigger(1, "Inazuma_Tanit_fin", 1, false, self.TriggerIn, self.TriggerOut)
end

function Q7321923Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73219"):EnterSceneLookCamera({x = -1707.0, y = 21.0, z = 5676.0}, 1, 3, false, false)
    actorUtils.FinishQuestID(false, 7321923)
    this:DestroySelf()
end

function Q7321923Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7321923Trigger
