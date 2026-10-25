require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14039Trigger3 = class("Q14039Trigger3", GadgetActorProxy)
Q14039Trigger3.defaultAlias = "Q14039Trigger3"
local Q14039ClientConfig = require("Quest/Client/Q14039ClientConfig")

local this
local subIDs = Q14039ClientConfig.SubIDs
local npcs = Q14039ClientConfig.Npcs
local points = Q14039ClientConfig.Points
local datas = Q14039ClientConfig.Datas

function Q14039Trigger3:OnPostDataPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger3] OnPostDataPrepare")
    this = self
end

function Q14039Trigger3:OnPostComponentPrepare()
    print("[MainId: 14039][Trigger: Q14039Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14039)
end

function Q14039Trigger3:TriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger3] TriggerIn")
    actorMgr:GetActor("14039"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("14039")
        actor:CreateQuestNpcById(1403910, npcs.Npc1090Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc1090Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q14039Trigger3:PreTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger3] PreTriggerIn")
end

function Q14039Trigger3:LightUpTriggerIn()
    print("[MainId: 14039][Trigger: Q14039Trigger3] LightUpTriggerIn")
end

function Q14039Trigger3:TriggerOut()
    print("[MainId: 14039][Trigger: Q14039Trigger3] TriggerOut")
end

return Q14039Trigger3
