require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger_7300309_narrator2 = class("Q73003Trigger_7300309_narrator2", GadgetActorProxy)
Q73003Trigger_7300309_narrator2.defaultAlias = "Q73003Trigger_7300309_narrator2"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300309_narrator2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300309_narrator2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300309_narrator2:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73003")
    actor:GetQuestNpcActor(npcs.Npc4198Data.alias, 73003)
    actor:NarratorOnlyTask(datas.NarratorTable8_PaimonHint3, nil, "")
    actor:EnterSceneLookCamera({x = -1387.23, y = 173.81, z = 2846.31}, 0.2, 1.5, true, true)
    self:DestroySelf()
end

function Q73003Trigger_7300309_narrator2:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger_7300309_narrator2
