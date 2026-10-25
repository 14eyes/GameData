require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger_7300309_narrator4 = class("Q73003Trigger_7300309_narrator4", GadgetActorProxy)
Q73003Trigger_7300309_narrator4.defaultAlias = "Q73003Trigger_7300309_narrator4"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300309_narrator4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300309_narrator4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300309_narrator4:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73003")
    actor:GetQuestNpcActor(npcs.Npc4198Data.alias, 73003)
    actor:NarratorOnlyTask(datas.NarratorTable10_PaimonHint5, nil, "")
    self:DestroySelf()
end

function Q73003Trigger_7300309_narrator4:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger_7300309_narrator4
