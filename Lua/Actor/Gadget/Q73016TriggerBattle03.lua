require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73016TriggerBattle03 = class("Q73016TriggerBattle03", GadgetActorProxy)
Q73016TriggerBattle03.defaultAlias = "Q73016TriggerBattle03"
local Q73016ClientConfig = require("Quest/Client/Q73016ClientConfig")

local this
local subIDs = Q73016ClientConfig.SubIDs
local npcs = Q73016ClientConfig.Npcs
local datas = Q73016ClientConfig.Datas

function Q73016TriggerBattle03:OnPostDataPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerBattle03] OnPostDataPrepare")
    this = self
end

function Q73016TriggerBattle03:OnPostComponentPrepare()
    print("[MainId: 73016][Trigger: Q73016TriggerBattle03] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73016TriggerBattle03:TriggerIn()
    print("[MainId: 73016][Trigger: Q73016TriggerBattle03] TriggerIn")
    actorMgr:GetActor("73016"):CallDelay(6, function(arg1)
        actorMgr:GetActor("73016"):GetQuestNpcActor(npcs.Npc20606Data.alias):DoFreeStyle(8010, true, nil, true, true, false, false)
        this:DestroySelf()
    end)
end

function Q73016TriggerBattle03:TriggerOut()
    print("[MainId: 73016][Trigger: Q73016TriggerBattle03] TriggerOut")
end

return Q73016TriggerBattle03
