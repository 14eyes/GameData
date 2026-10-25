require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302907Trigger = class("Q302907Trigger", GadgetActorProxy)
Q302907Trigger.defaultAlias = "Q302907Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302907Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302907Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302907Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("3029"):RequestInteraction(npcs.Npc10013Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q302907Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302907Trigger
