require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12021Trigger3 = class("Q12021Trigger3", GadgetActorProxy)
Q12021Trigger3.defaultAlias = "Q12021Trigger3"
local Q12021ClientConfig = require("Quest/Client/Q12021ClientConfig")

local subIDs = Q12021ClientConfig.SubIDs
local npcs = Q12021ClientConfig.Npcs
local datas = Q12021ClientConfig.Datas

function Q12021Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12021Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12021Trigger3:TriggerIn()
    print("TriggerIn")
end

function Q12021Trigger3:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12021"):FinishQuestID(true, 1202188)
end

return Q12021Trigger3
