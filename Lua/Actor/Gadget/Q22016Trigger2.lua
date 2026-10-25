require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22016Trigger2 = class("Q22016Trigger2", GadgetActorProxy)
Q22016Trigger2.defaultAlias = "Q22016Trigger2"
local Q22016ClientConfig = require("Quest/Client/Q22016ClientConfig")

local subIDs = Q22016ClientConfig.SubIDs
local npcs = Q22016ClientConfig.Npcs
local datas = Q22016ClientConfig.Datas

function Q22016Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22016Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22016Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22016"):FinishQuestID(false, 2201602)
    self:DestroySelf()
end

function Q22016Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q22016Trigger2
