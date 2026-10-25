require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local CatchMove2 = class("CatchMove2", GadgetActorProxy)
CatchMove2.defaultAlias = "CatchMove2"
local Q2017ClientConfig = require("Quest/Client/Q2017ClientConfig")

local subIDs = Q2017ClientConfig.SubIDs
local npcs = Q2017ClientConfig.Npcs
local gadgets = Q2017ClientConfig.Gadgets
local datas = Q2017ClientConfig.Datas

function CatchMove2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function CatchMove2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function CatchMove2:TriggerIn()
    print("TriggerIn")
    local questNpcActor = self:GetQuestNpcActor("")
    questNpcActor.RunToRouteTask(questNpcActor, datas.RoutePointsData1, nil, function(arg1)
        questNpcActor:Standby()
    end, nil, function(arg1)
        questNpcActor:SyncPos(2)
    end)

    self:DestroySelf()
end

function CatchMove2:TriggerOut()
    print("TriggerOut")
end

return CatchMove2
