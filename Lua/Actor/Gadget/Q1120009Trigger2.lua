require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120009Trigger2 = class("Q1120009Trigger2", GadgetActorProxy)
Q1120009Trigger2.defaultAlias = "Q1120009Trigger2"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q1120009Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120009Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8.022294, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120009Trigger2:TriggerIn()
    print("TriggerIn")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 0)
end

function Q1120009Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q1120009Trigger2
