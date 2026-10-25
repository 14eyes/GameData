require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41334Trigger1 = class("Q41334Trigger1", GadgetActorProxy)
Q41334Trigger1.defaultAlias = "Q41334Trigger1"
local Q41334ClientConfig = require("Quest/Client/Q41334ClientConfig")

local mainID = Q41334ClientConfig.MainID
local actorAlias = Q41334ClientConfig.ActorAlias
local subIDs = Q41334ClientConfig.SubIDs
local npcs = Q41334ClientConfig.Npcs
local gadgets = Q41334ClientConfig.Gadgets
local datas = Q41334ClientConfig.Datas

function Q41334Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41334Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41334Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTask(datas.PaimonNarratorDataBox, nil, "")
end

function Q41334Trigger1:TriggerOut()
    print("TriggerOut")
    actorMgr:DestroyEntityActor(datas.Q41334Trigger1_.alias, 3, false)
end

return Q41334Trigger1
