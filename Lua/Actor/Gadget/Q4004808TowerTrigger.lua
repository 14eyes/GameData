require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004808TowerTrigger = class("Q4004808TowerTrigger", GadgetActorProxy)
Q4004808TowerTrigger.defaultAlias = "Q4004808TowerTrigger"
local Q40048ClientConfig = require("Quest/Client/Q40048ClientConfig")

local subIDs = Q40048ClientConfig.SubIDs
local datas = Q40048ClientConfig.Datas

function Q4004808TowerTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004808TowerTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(59.58549, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004808TowerTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40048"):FinishQuestID(false, 4004808)
    self:DestroySelf()
end

function Q4004808TowerTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4004808TowerTrigger
