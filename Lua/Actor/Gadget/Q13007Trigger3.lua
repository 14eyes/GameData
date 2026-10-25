require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13007Trigger3 = class("Q13007Trigger3", GadgetActorProxy)
Q13007Trigger3.defaultAlias = "Q13007Trigger3"
local Q13007ClientConfig = require("Quest/Client/Q13007ClientConfig")

local subIDs = Q13007ClientConfig.SubIDs
local npcs = Q13007ClientConfig.Npcs
local datas = Q13007ClientConfig.Datas

function Q13007Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13007Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13007Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13007"):NarratorOnlyTaskByData(datas.Narrator_1300706, nil, 13007)
    self:DestroySelf()
end

function Q13007Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q13007Trigger3
