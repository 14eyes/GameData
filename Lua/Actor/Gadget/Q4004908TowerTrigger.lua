require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4004908TowerTrigger = class("Q4004908TowerTrigger", GadgetActorProxy)
Q4004908TowerTrigger.defaultAlias = "Q4004908TowerTrigger"
local Q40049ClientConfig = require("Quest/Client/Q40049ClientConfig")

local subIDs = Q40049ClientConfig.SubIDs
local datas = Q40049ClientConfig.Datas

function Q4004908TowerTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4004908TowerTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(66.45538, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4004908TowerTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40049"):FinishQuestID(false, 4004908)
    self:DestroySelf()
end

function Q4004908TowerTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4004908TowerTrigger
