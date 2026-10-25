require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216708 = class("Q7216708", GadgetActorProxy)
Q7216708.defaultAlias = "Q7216708"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216708:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216708:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216708:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):FinishQuestID(false, 7216708)
    self:DestroySelf()
end

function Q7216708:TriggerOut()
    print("TriggerOut")
end

return Q7216708
