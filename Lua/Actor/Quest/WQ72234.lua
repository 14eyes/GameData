require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72234 = class("Quest72234", QuestActorProxy)
Quest72234.defaultAlias = "Quest72234"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72234:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72234:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223401"] = self.OnSubStart7223401,
        ["7223402"] = self.OnSubStart7223402,
        ["7223403"] = self.OnSubStart7223403,
        ["7223404"] = self.OnSubStart7223404,
        ["7223405"] = self.OnSubStart7223405,
        ["7223406"] = self.OnSubStart7223406,
        ["7223407"] = self.OnSubStart7223407,
        ["7223408"] = self.OnSubStart7223408,
        ["7223409"] = self.OnSubStart7223409,
        ["7223410"] = self.OnSubStart7223410,
        ["7223411"] = self.OnSubStart7223411
    }
end

function Quest72234:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223401"] = self.OnSubFinish7223401,
        ["7223402"] = self.OnSubFinish7223402,
        ["7223403"] = self.OnSubFinish7223403,
        ["7223404"] = self.OnSubFinish7223404,
        ["7223405"] = self.OnSubFinish7223405,
        ["7223406"] = self.OnSubFinish7223406,
        ["7223407"] = self.OnSubFinish7223407,
        ["7223408"] = self.OnSubFinish7223408,
        ["7223409"] = self.OnSubFinish7223409,
        ["7223410"] = self.OnSubFinish7223410,
        ["7223411"] = self.OnSubFinish7223411
    }
end

function Quest72234:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72234:Start()
    print("Start")
end

function Quest72234:OnDestroy()
    print("OnDestroy")
end

function Quest72234:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72234:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72234:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72234:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72234:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72234:FinishQuestID7223401()
    print("FinishQuestID7223401")
    self.FinishQuestID(false, 7223401)
end

function Quest72234:FinishQuestID7223403()
    print("FinishQuestID7223403")
    self.FinishQuestID(false, 7223403)
end

function Quest72234:FinishQuestID7223404()
    print("FinishQuestID7223404")
    self.FinishQuestID(false, 7223404)
end

function Quest72234:FinishQuestID7223405()
    print("FinishQuestID7223405")
    self.FinishQuestID(false, 7223405)
end

function Quest72234:FinishQuestID7223406()
    print("FinishQuestID7223406")
    self.FinishQuestID(false, 7223406)
end

function Quest72234:FinishQuestID7223406()
    print("FinishQuestID7223406")
    self.FinishQuestID(false, 7223407)
end

function Quest72234:FinishQuestID7223408()
    print("FinishQuestID7223408")
    self.FinishQuestID(false, 7223408)
end

function Quest72234:inishQuestID7223409()
    print("inishQuestID7223409")
    self.FinishQuestID(false, 7223409)
end

function Quest72234:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest72234:CallOnAvatarSit(Quest72234.CheckSitPoint)
end

function Quest72234:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest72234:CallOnAvatarStand(Quest72234.RegisterSittingEvent)
end

function Quest72234:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7223401
    v[1] = "SitPoint_01"
    v[2] = n
    local tbl2 = {}
    local n2 = 7223403
    tbl2[1] = "SitPoint_02"
    tbl2[2] = n2
    local tbl3 = {}
    local n3 = 7223404
    tbl3[1] = "SitPoint_03"
    tbl3[2] = n3
    local tbl4 = {}
    local n4 = 7223405
    tbl4[1] = "SitPoint_04"
    tbl4[2] = n4
    local tbl5 = {}
    local n5 = 7223406
    tbl5[1] = "SitPoint_05"
    tbl5[2] = n5
    local tbl6 = {}
    local n6 = 7223407
    tbl6[1] = "SitPoint_06"
    tbl6[2] = n6
    local tbl7 = {}
    local n7 = 7223408
    tbl7[1] = "SitPoint_07"
    tbl7[2] = n7
    local tbl8 = {}
    local n8 = 7223409
    tbl8[1] = "SitPoint_08"
    tbl8[2] = n8
    tbl[1] = v
    tbl[2] = tbl2
    tbl[3] = tbl3
    tbl[4] = tbl4
    tbl[5] = tbl5
    tbl[6] = tbl6
    tbl[7] = tbl7
    tbl[8] = tbl8
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(5, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. " SitPos[x=" .. pos.x .. " , z=" .. pos.z .. "]   PlayerPos[x=" .. avatarPos.x .. " , z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 10 then
            if math.abs(pos.z - avatarPos.z) < 50 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 5 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, tbl[i][2])
                        Quest72234:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("beforce standing")
    Quest72234:RegisterStandingEvent()
end

function Quest72234:OnSubStart7223401(arg1)
    print("OnSubStart7223401")
    self:RegisterSittingEvent()
end

function Quest72234:OnSubFinish7223401(arg1)
    print("OnSubFinish7223401")
end

function Quest72234:OnSubStart7223402(arg1)
    print("OnSubStart7223402")
    self:NpcCreate(arg1, npcs.NPC20343Data.id, 1)
end

function Quest72234:OnSubFinish7223402(arg1)
    print("OnSubFinish7223402")
end

function Quest72234:OnSubStart7223403(arg1)
    print("OnSubStart7223403")
end

function Quest72234:OnSubFinish7223403(arg1)
    print("OnSubFinish7223403")
    self:NarratorOnlyTask(datas.NarratorTable7223403, nil, "")
end

function Quest72234:OnSubStart7223404(arg1)
    print("OnSubStart7223404")
end

function Quest72234:OnSubFinish7223404(arg1)
    print("OnSubFinish7223404")
    self:NarratorOnlyTask(datas.NarratorTable7223404, nil, "")
end

function Quest72234:OnSubStart7223405(arg1)
    print("OnSubStart7223405")
end

function Quest72234:OnSubFinish7223405(arg1)
    print("OnSubFinish7223405")
    self:NarratorOnlyTask(datas.NarratorTable7223405, nil, "")
end

function Quest72234:OnSubStart7223406(arg1)
    print("OnSubStart7223406")
end

function Quest72234:OnSubFinish7223406(arg1)
    print("OnSubFinish7223406")
end

function Quest72234:OnSubStart7223407(arg1)
    print("OnSubStart7223407")
end

function Quest72234:OnSubFinish7223407(arg1)
    print("OnSubFinish7223407")
end

function Quest72234:OnSubStart7223408(arg1)
    print("OnSubStart7223408")
end

function Quest72234:OnSubFinish7223408(arg1)
    print("OnSubFinish7223408")
end

function Quest72234:OnSubStart7223409(arg1)
    print("OnSubStart7223409")
end

function Quest72234:OnSubFinish7223409(arg1)
    print("OnSubFinish7223409")
end

function Quest72234:OnSubStart7223410(arg1)
    print("OnSubStart7223410")
    self:RegisterSittingEvent()
end

function Quest72234:OnSubFinish7223410(arg1)
    print("OnSubFinish7223410")
    self:CallDelay(6, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable7223410, nil, "")
    end)
end

function Quest72234:OnSubStart7223411(arg1)
    print("OnSubStart7223411")
end

function Quest72234:OnSubFinish7223411(arg1)
    print("OnSubFinish7223411")
    self:NpcDestroyWithDither(npcs.NPC20343Data.alias, 5)
end

return Quest72234
