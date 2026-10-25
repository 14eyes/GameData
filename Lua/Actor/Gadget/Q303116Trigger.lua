require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303116Trigger = class("Q303116Trigger", GadgetActorProxy)
Q303116Trigger.defaultAlias = "Q303116Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303116Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303116Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303116Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("3031"):RequestInteraction(npcs.Npc1056Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q303116Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303116Trigger
