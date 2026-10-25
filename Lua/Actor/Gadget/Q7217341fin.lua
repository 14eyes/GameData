require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217341fin = class("Q7217341fin", GadgetActorProxy)
Q7217341fin.defaultAlias = "Q7217341fin"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217341fin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217341fin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217341fin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217341)
    self:DestroySelf()
end

function Q7217341fin:TriggerOut()
    print("TriggerOut")
end

return Q7217341fin
