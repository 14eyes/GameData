require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217350fin = class("Q7217350fin", GadgetActorProxy)
Q7217350fin.defaultAlias = "Q7217350fin"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217350fin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217350fin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217350fin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217350)
    self:DestroySelf()
end

function Q7217350fin:TriggerOut()
    print("TriggerOut")
end

return Q7217350fin
