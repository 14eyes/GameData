require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303202Trigger = class("Q303202Trigger", GadgetActorProxy)
Q303202Trigger.defaultAlias = "Q303202Trigger"
local Q3032ClientConfig = require("Quest/Client/Q3032ClientConfig")

local this
local subIDs = Q3032ClientConfig.SubIDs
local npcs = Q3032ClientConfig.Npcs
local datas = Q3032ClientConfig.Datas

function Q303202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303202Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3032"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("3032"):RequestInteraction(npcs.Npc1065Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q303202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303202Trigger
