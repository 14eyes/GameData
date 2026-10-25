require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7217302fin = class("Q7217302fin", GadgetActorProxy)
Q7217302fin.defaultAlias = "Q7217302fin"
local Q72173ClientConfig = require("Quest/Client/Q72173ClientConfig")

local subIDs = Q72173ClientConfig.SubIDs
local npcs = Q72173ClientConfig.Npcs
local datas = Q72173ClientConfig.Datas

function Q7217302fin:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7217302fin:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7217302fin:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72173"):FinishQuestID(false, 7217302)
    self:DestroySelf()
end

function Q7217302fin:TriggerOut()
    print("TriggerOut")
end

return Q7217302fin
