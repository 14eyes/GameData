require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800708_TriggerIn_Room3 = class("Q800708_TriggerIn_Room3", GadgetActorProxy)
Q800708_TriggerIn_Room3.defaultAlias = "Q800708_TriggerIn_Room3"
local Q8007ClientConfig = require("Quest/Client/Q8007ClientConfig")

local subIDs = Q8007ClientConfig.SubIDs
local npcs = Q8007ClientConfig.Npcs
local gadgets = Q8007ClientConfig.Gadgets
local datas = Q8007ClientConfig.Datas

function Q800708_TriggerIn_Room3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800708_TriggerIn_Room3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800708_TriggerIn_Room3:TriggerIn()
    print("TriggerIn")
    print("In Room 3")
    actorMgr:GetActor("8007"):SetQuestVar(800708, 0, 3)
end

function Q800708_TriggerIn_Room3:TriggerOut()
    print("TriggerOut")
end

return Q800708_TriggerIn_Room3
