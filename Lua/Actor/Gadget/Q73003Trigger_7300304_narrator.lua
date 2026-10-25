require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73003Trigger_7300304_narrator = class("Q73003Trigger_7300304_narrator", GadgetActorProxy)
Q73003Trigger_7300304_narrator.defaultAlias = "Q73003Trigger_7300304_narrator"
local Q73003ClientConfig = require("Quest/Client/Q73003ClientConfig")

local subIDs = Q73003ClientConfig.SubIDs
local npcs = Q73003ClientConfig.Npcs
local datas = Q73003ClientConfig.Datas

function Q73003Trigger_7300304_narrator:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73003Trigger_7300304_narrator:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73003Trigger_7300304_narrator:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("73003")
    actor:GetQuestNpcActor(npcs.Npc4198Data.alias, 73003)
    actor:NarratorOnlyTask(datas.NarratorTable2_ranaHint2, nil, "")
    self:DestroySelf()
end

function Q73003Trigger_7300304_narrator:TriggerOut()
    print("TriggerOut")
end

return Q73003Trigger_7300304_narrator
