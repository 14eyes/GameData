require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005008TowerTrigger = class("Q4005008TowerTrigger", GadgetActorProxy)
Q4005008TowerTrigger.defaultAlias = "Q4005008TowerTrigger"
local Q40050ClientConfig = require("Quest/Client/Q40050ClientConfig")

local subIDs = Q40050ClientConfig.SubIDs
local datas = Q40050ClientConfig.Datas

function Q4005008TowerTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005008TowerTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50.63715, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005008TowerTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40050"):FinishQuestID(false, 4005008)
    self:DestroySelf()
end

function Q4005008TowerTrigger:TriggerOut()
    print("TriggerOut")
end

return Q4005008TowerTrigger
