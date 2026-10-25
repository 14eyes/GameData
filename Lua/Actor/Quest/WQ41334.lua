require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41334 = class("Quest41334", QuestActorProxy)
Quest41334.defaultAlias = "Quest41334"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41334:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41334:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133426"] = self.OnSubStart4133426,
        ["4133401"] = self.OnSubStart4133401,
        ["4133411"] = self.OnSubStart4133411,
        ["4133402"] = self.OnSubStart4133402,
        ["4133403"] = self.OnSubStart4133403,
        ["4133404"] = self.OnSubStart4133404,
        ["4133405"] = self.OnSubStart4133405,
        ["4133406"] = self.OnSubStart4133406,
        ["4133410"] = self.OnSubStart4133410,
        ["4133408"] = self.OnSubStart4133408,
        ["4133409"] = self.OnSubStart4133409,
        ["4133425"] = self.OnSubStart4133425,
        ["4133412"] = self.OnSubStart4133412,
        ["4133413"] = self.OnSubStart4133413,
        ["4133414"] = self.OnSubStart4133414,
        ["4133415"] = self.OnSubStart4133415,
        ["4133416"] = self.OnSubStart4133416,
        ["4133407"] = self.OnSubStart4133407,
        ["4133417"] = self.OnSubStart4133417,
        ["4133418"] = self.OnSubStart4133418,
        ["4133419"] = self.OnSubStart4133419,
        ["4133420"] = self.OnSubStart4133420,
        ["4133421"] = self.OnSubStart4133421,
        ["4133422"] = self.OnSubStart4133422,
        ["4133424"] = self.OnSubStart4133424,
        ["4133423"] = self.OnSubStart4133423
    }
end

function Quest41334:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133426"] = self.OnSubFinish4133426,
        ["4133401"] = self.OnSubFinish4133401,
        ["4133411"] = self.OnSubFinish4133411,
        ["4133402"] = self.OnSubFinish4133402,
        ["4133403"] = self.OnSubFinish4133403,
        ["4133404"] = self.OnSubFinish4133404,
        ["4133405"] = self.OnSubFinish4133405,
        ["4133406"] = self.OnSubFinish4133406,
        ["4133410"] = self.OnSubFinish4133410,
        ["4133408"] = self.OnSubFinish4133408,
        ["4133409"] = self.OnSubFinish4133409,
        ["4133425"] = self.OnSubFinish4133425,
        ["4133412"] = self.OnSubFinish4133412,
        ["4133413"] = self.OnSubFinish4133413,
        ["4133414"] = self.OnSubFinish4133414,
        ["4133415"] = self.OnSubFinish4133415,
        ["4133416"] = self.OnSubFinish4133416,
        ["4133407"] = self.OnSubFinish4133407,
        ["4133417"] = self.OnSubFinish4133417,
        ["4133418"] = self.OnSubFinish4133418,
        ["4133419"] = self.OnSubFinish4133419,
        ["4133420"] = self.OnSubFinish4133420,
        ["4133421"] = self.OnSubFinish4133421,
        ["4133422"] = self.OnSubFinish4133422,
        ["4133424"] = self.OnSubFinish4133424,
        ["4133423"] = self.OnSubFinish4133423
    }
end

function Quest41334:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133426"] = self.OnSubFailed4133426,
        ["4133401"] = self.OnSubFailed4133401,
        ["4133411"] = self.OnSubFailed4133411,
        ["4133402"] = self.OnSubFailed4133402,
        ["4133403"] = self.OnSubFailed4133403,
        ["4133404"] = self.OnSubFailed4133404,
        ["4133405"] = self.OnSubFailed4133405,
        ["4133406"] = self.OnSubFailed4133406,
        ["4133410"] = self.OnSubFailed4133410,
        ["4133408"] = self.OnSubFailed4133408,
        ["4133409"] = self.OnSubFailed4133409,
        ["4133425"] = self.OnSubFailed4133425,
        ["4133412"] = self.OnSubFailed4133412,
        ["4133413"] = self.OnSubFailed4133413,
        ["4133414"] = self.OnSubFailed4133414,
        ["4133415"] = self.OnSubFailed4133415,
        ["4133416"] = self.OnSubFailed4133416,
        ["4133407"] = self.OnSubFailed4133407,
        ["4133417"] = self.OnSubFailed4133417,
        ["4133418"] = self.OnSubFailed4133418,
        ["4133419"] = self.OnSubFailed4133419,
        ["4133420"] = self.OnSubFailed4133420,
        ["4133421"] = self.OnSubFailed4133421,
        ["4133422"] = self.OnSubFailed4133422,
        ["4133424"] = self.OnSubFailed4133424,
        ["4133423"] = self.OnSubFailed4133423
    }
end

function Quest41334:Start()
    print("Start")
end

function Quest41334:OnDestroy()
    print("OnDestroy")
end

function Quest41334:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41334:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41334:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2430", 0, true)
    self:NotifyTo("Npc2451", 0, true)
    self:NotifyTo("Npc2121", 0, true)
    self:NotifyTo("Npc2417", 0, true)
    self:NotifyTo("Npc2405", 0, true)
    self:NotifyTo("Npc2420", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc245101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc212101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc241701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc243001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc240501Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc242001Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710269Data.alias)
    self:UnSpawn(gadgets.Gadget70710270Data.alias)
end

function Quest41334:RepeatCheckSit()
    Quest41334:CallOnAvatarSit(Quest41334.CheckSitPos)
end

function Quest41334:CheckSitPos()
    local pos = sceneData:GetDummyPoint(3, "Q4133417seat").pos
    local avatarPos = actorUtils.GetAvatarPos()
    if math.abs(pos.x - avatarPos.x) < 0.5 then
        if math.abs(pos.z - avatarPos.z) < 0.5 then
            if math.abs(pos.y - avatarPos.y) < 0.5 then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 4133417)
                end
            end
        end
    else
        Quest41334:CallOnAvatarStand(Quest41334.RepeatCheckSit)
    end
end

function Quest41334:destroynpc()
    print("destroynpc")
    self:DestroyQuestNpcActorByAlias(npcs.Npc243001Data.alias, false)
    self:NotifyTo("Npc2430", 0, true)
end

function Quest41334:beginleave()
    print("beginleave")
    self:ShowBlackScreen(0.5, 1, 0.5, self.npcstandup, nil, nil, "")
end

function Quest41334:npcstandup()
    self.GetQuestNpcActor(self, npcs.Npc240501Data.alias):StandFromChair(0)
    self.GetQuestNpcActor(self, npcs.Npc242001Data.alias):StandFromChair(0)
    self.GetQuestNpcActor(self, npcs.Npc243001Data.alias):StandFromChair(0)
    self.CreateQuestNpcById(self, 4133419, npcs.Npc240501Data.id, 1)
    self.CreateQuestNpcById(self, 4133419, npcs.Npc242001Data.id, 2)
    self.CreateQuestNpcById(self, 4133419, npcs.Npc243001Data.id, 3)
    self.CallDelay(self, 1, function()
        self:GetQuestNpcActor(npcs.Npc243001Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q4133401zhulaoban").rot))
        self:GetQuestNpcActor(npcs.Npc240501Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q4133419jianqiu").rot))
        self:GetQuestNpcActor(npcs.Npc242001Data.alias):TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q4133419huachu").rot))
    end)
end

function Quest41334:destoryjianqiuhauchu()
    print("destoryjianqiuhauchu")
    self:DestroyQuestNpcActorByAlias(npcs.Npc240501Data.alias, false)
    self:DestroyQuestNpcActorByAlias(npcs.Npc242001Data.alias, false)
    self:NotifyTo("Npc2405", 0, true)
    self:NotifyTo("Npc2420", 0, true)
end

function Quest41334:createjianqiuhuachu()
    print("createjianqiuhuachu")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    self:CreateQuestNpcById(4133421, npcs.Npc240501Data.id, 1)
    self:CreateQuestNpcById(4133421, npcs.Npc242001Data.id, 2)
    self:RequestInteraction(npcs.Npc240501Data.alias)
end

function Quest41334:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:SpawnGadgetById(4133421, 70800017, 1)
    end
end

function Quest41334:createnpcall()
    print("createnpcall")
    self:CreateQuestNpcById(4133416, npcs.Npc243001Data.id, 1)
    self:CreateQuestNpcById(4133416, npcs.Npc240501Data.id, 2)
    self:CreateQuestNpcById(4133416, npcs.Npc242001Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc240501Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc242001Data.alias):SitOnChair(0)
end

function Quest41334:OnSubStart4133426(arg1)
    print("OnSubStart4133426")
end

function Quest41334:OnSubFinish4133426(arg1)
    print("OnSubFinish4133426")
end

function Quest41334:OnSubFailed4133426(arg1)
    print("OnSubFailed4133426")
end

function Quest41334:OnSubStart4133401(arg1)
    print("OnSubStart4133401")
    self:NotifyTo("Npc2451", 1, true)
    self:NotifyTo("Npc2430", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc243001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc245101Data.id, 2)
end

function Quest41334:OnSubFinish4133401(arg1)
    print("OnSubFinish4133401")
end

function Quest41334:OnSubFailed4133401(arg1)
    print("OnSubFailed4133401")
end

function Quest41334:OnSubStart4133411(arg1)
    print("OnSubStart4133411")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133411(arg1)
    print("OnSubFinish4133411")
end

function Quest41334:OnSubFailed4133411(arg1)
    print("OnSubFailed4133411")
end

function Quest41334:OnSubStart4133402(arg1)
    print("OnSubStart4133402")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133402(arg1)
    print("OnSubFinish4133402")
end

function Quest41334:OnSubFailed4133402(arg1)
    print("OnSubFailed4133402")
end

function Quest41334:OnSubStart4133403(arg1)
    print("OnSubStart4133403")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133403(arg1)
    print("OnSubFinish4133403")
end

function Quest41334:OnSubFailed4133403(arg1)
    print("OnSubFailed4133403")
end

function Quest41334:OnSubStart4133404(arg1)
    print("OnSubStart4133404")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133404(arg1)
    print("OnSubFinish4133404")
end

function Quest41334:OnSubFailed4133404(arg1)
    print("OnSubFailed4133404")
end

function Quest41334:OnSubStart4133405(arg1)
    print("OnSubStart4133405")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133405(arg1)
    print("OnSubFinish4133405")
end

function Quest41334:OnSubFailed4133405(arg1)
    print("OnSubFailed4133405")
end

function Quest41334:OnSubStart4133406(arg1)
    print("OnSubStart4133406")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133406(arg1)
    print("OnSubFinish4133406")
end

function Quest41334:OnSubFailed4133406(arg1)
    print("OnSubFailed4133406")
end

function Quest41334:OnSubStart4133410(arg1)
    print("OnSubStart4133410")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
    self:RequestInteraction(npcs.Npc245101Data.alias)
end

function Quest41334:OnSubFinish4133410(arg1)
    print("OnSubFinish4133410")
end

function Quest41334:OnSubFailed4133410(arg1)
    print("OnSubFailed4133410")
end

function Quest41334:OnSubStart4133408(arg1)
    print("OnSubStart4133408")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
    self:UnSpawn(gadgets.Gadget70710269Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710269Data.id, 1, 0)
end

function Quest41334:OnSubFinish4133408(arg1)
    print("OnSubFinish4133408")
    self:UnSpawn(gadgets.Gadget70710269Data.alias)
end

function Quest41334:OnSubFailed4133408(arg1)
    print("OnSubFailed4133408")
end

function Quest41334:OnSubStart4133409(arg1)
    print("OnSubStart4133409")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
    self:UnSpawn(gadgets.Gadget70710270Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710270Data.id, 1, 0)
end

function Quest41334:OnSubFinish4133409(arg1)
    print("OnSubFinish4133409")
    self:UnSpawn(gadgets.Gadget70710270Data.alias)
end

function Quest41334:OnSubFailed4133409(arg1)
    print("OnSubFailed4133409")
end

function Quest41334:OnSubStart4133425(arg1)
    print("OnSubStart4133425")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2451", 1, true)
end

function Quest41334:OnSubFinish4133425(arg1)
    print("OnSubFinish4133425")
    self:SafeDestroyQuestNpc(npcs.Npc245101Data.alias, 3)
    self:NotifyTo("Npc2451", 0, true)
    self:FinishQuestID(false, 4133411)
end

function Quest41334:OnSubFailed4133425(arg1)
    print("OnSubFailed4133425")
end

function Quest41334:OnSubStart4133412(arg1)
    print("OnSubStart4133412")
    self:NotifyTo("Npc2430", 1, true)
end

function Quest41334:OnSubFinish4133412(arg1)
    print("OnSubFinish4133412")
end

function Quest41334:OnSubFailed4133412(arg1)
    print("OnSubFailed4133412")
end

function Quest41334:OnSubStart4133413(arg1)
    print("OnSubStart4133413")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2121", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc212101Data.id, 1)
end

function Quest41334:OnSubFinish4133413(arg1)
    print("OnSubFinish4133413")
end

function Quest41334:OnSubFailed4133413(arg1)
    print("OnSubFailed4133413")
end

function Quest41334:OnSubStart4133414(arg1)
    print("OnSubStart4133414")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2121", 1, true)
    self:NotifyTo("Npc2417", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc241701Data.id, 1)
end

function Quest41334:OnSubFinish4133414(arg1)
    print("OnSubFinish4133414")
    self:SafeDestroyQuestNpc(npcs.Npc212101Data.alias, 3)
    self:NotifyTo("Npc2121", 0, true)
end

function Quest41334:OnSubFailed4133414(arg1)
    print("OnSubFailed4133414")
end

function Quest41334:OnSubStart4133415(arg1)
    print("OnSubStart4133415")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2417", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc243001Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc240501Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc242001Data.id, 3)
end

function Quest41334:OnSubFinish4133415(arg1)
    print("OnSubFinish4133415")
    self:SafeDestroyQuestNpc(npcs.Npc241701Data.alias, 3)
    self:NotifyTo("Npc2417", 0, true)
end

function Quest41334:OnSubFailed4133415(arg1)
    print("OnSubFailed4133415")
end

function Quest41334:OnSubStart4133416(arg1)
    print("OnSubStart4133416")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createnpcall, nil, nil, "")
end

function Quest41334:OnSubFinish4133416(arg1)
    print("OnSubFinish4133416")
end

function Quest41334:OnSubFailed4133416(arg1)
    print("OnSubFailed4133416")
end

function Quest41334:OnSubStart4133407(arg1)
    print("OnSubStart4133407")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    self:GetQuestNpcActor(npcs.Npc240501Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc242001Data.alias):SitOnChair(0)
end

function Quest41334:OnSubFinish4133407(arg1)
    print("OnSubFinish4133407")
end

function Quest41334:OnSubFailed4133407(arg1)
    print("OnSubFailed4133407")
end

function Quest41334:OnSubStart4133417(arg1)
    print("OnSubStart4133417")
    self:RepeatCheckSit()
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    self:GetQuestNpcActor(npcs.Npc243001Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc240501Data.alias):SitOnChair(0)
    self:GetQuestNpcActor(npcs.Npc242001Data.alias):SitOnChair(0)
end

function Quest41334:OnSubFinish4133417(arg1)
    print("OnSubFinish4133417")
end

function Quest41334:OnSubFailed4133417(arg1)
    print("OnSubFailed4133417")
end

function Quest41334:OnSubStart4133418(arg1)
    print("OnSubStart4133418")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc243001Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc240501Data.alias)
    v:SitOnChair(0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc242001Data.alias)
    questNpcActor2:SitOnChair(0)
    questNpcActor:EnableHeadCtrl(false)
    v:EnableHeadCtrl(false)
    questNpcActor2:EnableHeadCtrl(false)
    self:RequestInteraction(npcs.Npc243001Data.alias)
end

function Quest41334:OnSubFinish4133418(arg1)
    print("OnSubFinish4133418")
end

function Quest41334:OnSubFailed4133418(arg1)
    print("OnSubFailed4133418")
end

function Quest41334:OnSubStart4133419(arg1)
    print("OnSubStart4133419")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    self:ActionSafeCall(self.beginleave)
end

function Quest41334:OnSubFinish4133419(arg1)
    print("OnSubFinish4133419")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destoryjianqiuhauchu, nil, nil, "")
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
end

function Quest41334:OnSubFailed4133419(arg1)
    print("OnSubFailed4133419")
end

function Quest41334:OnSubStart4133420(arg1)
    print("OnSubStart4133420")
    self:NotifyTo("Npc2430", 1, true)
    self:NotifyTo("Npc2405", 1, true)
    self:NotifyTo("Npc2420", 1, true)
    actorMgr:CreateActorWithPos(datas.Q41334Trigger_.alias, datas.Q41334Trigger_.script, datas.Q41334Trigger_.id, 0, datas.Q41334Trigger_.point.pos, datas.Q41334Trigger_.point.rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q41334Trigger2_.alias, datas.Q41334Trigger2_.script, datas.Q41334Trigger2_.id, 0, datas.Q41334Trigger2_.point.pos, datas.Q41334Trigger2_.point.rot, true, false, 3)
end

function Quest41334:OnSubFinish4133420(arg1)
    print("OnSubFinish4133420")
end

function Quest41334:OnSubFailed4133420(arg1)
    print("OnSubFailed4133420")
end

function Quest41334:OnSubStart4133421(arg1)
    print("OnSubStart4133421")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.createjianqiuhuachu, nil, nil, "")
end

function Quest41334:OnSubFinish4133421(arg1)
    print("OnSubFinish4133421")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destoryjianqiuhauchu, nil, nil, "")
end

function Quest41334:OnSubFailed4133421(arg1)
    print("OnSubFailed4133421")
end

function Quest41334:OnSubStart4133422(arg1)
    print("OnSubStart4133422")
    self:NotifyTo("Npc2430", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc243001Data.id, 1)
end

function Quest41334:OnSubFinish4133422(arg1)
    print("OnSubFinish4133422")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
end

function Quest41334:OnSubFailed4133422(arg1)
    print("OnSubFailed4133422")
end

function Quest41334:OnSubStart4133424(arg1)
    print("OnSubStart4133424")
end

function Quest41334:OnSubFinish4133424(arg1)
    print("OnSubFinish4133424")
end

function Quest41334:OnSubFailed4133424(arg1)
    print("OnSubFailed4133424")
end

function Quest41334:OnSubStart4133423(arg1)
    print("OnSubStart4133423")
end

function Quest41334:OnSubFinish4133423(arg1)
    print("OnSubFinish4133423")
end

function Quest41334:OnSubFailed4133423(arg1)
    print("OnSubFailed4133423")
end

return Quest41334
