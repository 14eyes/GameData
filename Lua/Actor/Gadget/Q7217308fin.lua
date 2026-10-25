require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217308fin = class("Q7217308fin", GadgetActorProxy)
Q7217308fin.defaultAlias = "Q7217308fin"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217308fin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217308fin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217308fin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217308)
    self:DestroySelf()
end

function Q7217308fin:TriggerOut()
    print("TriggerOut")
end

return Q7217308fin
