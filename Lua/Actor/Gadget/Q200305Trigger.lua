require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200305Trigger = class("Q200305Trigger", GadgetActorProxy)
Q200305Trigger.defaultAlias = "Q200305Trigger"
local Q2003ClientConfig = require("Quest/Client/Q2003ClientConfig")

local mainID = Q2003ClientConfig.MainID
local actorAlias = Q2003ClientConfig.ActorAlias
local subIDs = Q2003ClientConfig.SubIDs
local npcs = Q2003ClientConfig.Npcs
local datas = Q2003ClientConfig.Datas

function Q200305Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200305Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200305Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc3010Data.alias)
    self:DestroySelf()
end

function Q200305Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200305Trigger
