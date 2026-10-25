require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13009Trigger3 = class("Q13009Trigger3", GadgetActorProxy)
Q13009Trigger3.defaultAlias = "Q13009Trigger3"
local Q13009ClientConfig = require("Quest/Client/Q13009ClientConfig")

local subIDs = Q13009ClientConfig.SubIDs
local npcs = Q13009ClientConfig.Npcs

function Q13009Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13009Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(7, 5, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13009Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(Q13009ClientConfig.ActorAlias):GetQuestNpcActor(npcs.Npc1055Data.alias):DoFreeStyle(1200, false, nil, true, false, false)
end

function Q13009Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q13009Trigger3
