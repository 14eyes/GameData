require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800708_TriggerIn_Room2 = class("Q800708_TriggerIn_Room2", GadgetActorProxy)
Q800708_TriggerIn_Room2.defaultAlias = "Q800708_TriggerIn_Room2"
local Q8007ClientConfig = require("Quest/Client/Q8007ClientConfig")

local subIDs = Q8007ClientConfig.SubIDs
local npcs = Q8007ClientConfig.Npcs
local gadgets = Q8007ClientConfig.Gadgets
local datas = Q8007ClientConfig.Datas

function Q800708_TriggerIn_Room2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800708_TriggerIn_Room2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800708_TriggerIn_Room2:TriggerIn()
    print("TriggerIn")
    print("In Room 2")
    actorMgr:GetActor("8007"):SetQuestVar(800708, 0, 2)
end

function Q800708_TriggerIn_Room2:TriggerOut()
    print("TriggerOut")
end

return Q800708_TriggerIn_Room2
