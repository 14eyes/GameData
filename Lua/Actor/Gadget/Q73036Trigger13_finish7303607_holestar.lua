require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73036Trigger13_finish7303607_holestar = class("Q73036Trigger13_finish7303607_holestar", GadgetActorProxy)
Q73036Trigger13_finish7303607_holestar.defaultAlias = "Q73036Trigger13_finish7303607_holestar"
local Q73036ClientConfig = require("Quest/Client/Q73036ClientConfig")

local subIDs = Q73036ClientConfig.SubIDs
local npcs = Q73036ClientConfig.Npcs
local datas = Q73036ClientConfig.Datas

function Q73036Trigger13_finish7303607_holestar:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73036Trigger13_finish7303607_holestar:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(17.46, 8.09, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73036Trigger13_finish7303607_holestar:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73036"):NarratorOnlyTask(datas.NarratorTable_Arama11, nil, "")
    self:DestroySelf()
end

function Q73036Trigger13_finish7303607_holestar:TriggerOut()
    print("TriggerOut")
end

return Q73036Trigger13_finish7303607_holestar
