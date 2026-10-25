require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13014TriggerEventB = class("Q13014TriggerEventB", GadgetActorProxy)
Q13014TriggerEventB.defaultAlias = "Q13014TriggerEventB"
local Q13014ClientConfig = require("Quest/Client/Q13014ClientConfig")

local subIDs = Q13014ClientConfig.SubIDs
local npcs = Q13014ClientConfig.Npcs
local datas = Q13014ClientConfig.Datas

function Q13014TriggerEventB:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13014TriggerEventB:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13014TriggerEventB:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13014"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13014")
        actor:CreateQuestNpcById(1301401, npcs.Npc1056Data.id, 0)
        actor:RequestInteraction(npcs.Npc1056Data.alias)
    end, nil, nil, 0, false, true)
end

function Q13014TriggerEventB:TriggerOut()
    print("TriggerOut")
end

return Q13014TriggerEventB
