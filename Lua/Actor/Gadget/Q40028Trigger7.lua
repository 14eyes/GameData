require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40028Trigger7 = class("Q40028Trigger7", GadgetActorProxy)
Q40028Trigger7.defaultAlias = "Q40028Trigger7"
local Q40028ClientConfig = require("Quest/Client/Q40028ClientConfig")

local subIDs = Q40028ClientConfig.SubIDs
local npcs = Q40028ClientConfig.Npcs
local gadgets = Q40028ClientConfig.Gadgets
local datas = Q40028ClientConfig.Datas

function Q40028Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40028Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40028Trigger7:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40028"):ActionSafeCall(function(arg1)
        actorMgr:GetActor("40028"):PlayCutsceneIndex("400281001", function(arg1)
            actorMgr:GetActor("40028"):FinishQuestID(false, 4002810)
        end, nil, nil, false)
    end)

    self:DestroySelf()
end

function Q40028Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q40028Trigger7
