require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerStage2Start = class("Q11013TriggerStage2Start", GadgetActorProxy)
Q11013TriggerStage2Start.defaultAlias = "Q11013TriggerStage2Start"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs
local datas = Q11013ClientConfig.Datas

function Q11013TriggerStage2Start:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerStage2Start:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(23, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11013TriggerStage2Start:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11013"):RequestInteraction(npcs.Npc1045Data.alias)
    self:DestroySelf()
end

function Q11013TriggerStage2Start:TriggerOut()
    print("TriggerOut")
end

return Q11013TriggerStage2Start
