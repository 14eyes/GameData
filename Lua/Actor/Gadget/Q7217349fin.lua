require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217349fin = class("Q7217349fin", GadgetActorProxy)
Q7217349fin.defaultAlias = "Q7217349fin"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217349fin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217349fin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217349fin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217349)
    self:DestroySelf()
end

function Q7217349fin:TriggerOut()
    print("TriggerOut")
end

return Q7217349fin
