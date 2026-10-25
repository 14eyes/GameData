require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11013TriggerDungeonStart = class("Q11013TriggerDungeonStart", GadgetActorProxy)
Q11013TriggerDungeonStart.defaultAlias = "Q11013TriggerDungeonStart"
local Q11013ClientConfig = require("Quest/Client/Q11013ClientConfig")

local subIDs = Q11013ClientConfig.SubIDs
local npcs = Q11013ClientConfig.Npcs
local datas = Q11013ClientConfig.Datas

function Q11013TriggerDungeonStart:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11013TriggerDungeonStart:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11013TriggerDungeonStart:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("11013"):FinishQuestID(false, 1101326)
    self:DestroySelf()
end

function Q11013TriggerDungeonStart:TriggerOut()
    print("TriggerOut")
end

return Q11013TriggerDungeonStart
