require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201301Trigger = class("Q201301Trigger", GadgetActorProxy)
Q201301Trigger.defaultAlias = "Q201301Trigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q201301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201301Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction("Npc3069")
    self:DestroySelf()
end

function Q201301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201301Trigger
