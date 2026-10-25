require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q800708_TriggerIn_RoomCenter = class("Q800708_TriggerIn_RoomCenter", GadgetActorProxy)
Q800708_TriggerIn_RoomCenter.defaultAlias = "Q800708_TriggerIn_RoomCenter"
local Q8007ClientConfig = require("Quest/Client/Q8007ClientConfig")

local subIDs = Q8007ClientConfig.SubIDs
local npcs = Q8007ClientConfig.Npcs
local gadgets = Q8007ClientConfig.Gadgets
local datas = Q8007ClientConfig.Datas

function Q800708_TriggerIn_RoomCenter:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q800708_TriggerIn_RoomCenter:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(28, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q800708_TriggerIn_RoomCenter:TriggerIn()
    print("TriggerIn")
    print("In Room Center")
    actorMgr:GetActor("8007"):SetQuestVar(800708, 0, 0)
end

function Q800708_TriggerIn_RoomCenter:TriggerOut()
    print("TriggerOut")
end

return Q800708_TriggerIn_RoomCenter
